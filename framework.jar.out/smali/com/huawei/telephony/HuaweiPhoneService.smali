.class public Lcom/huawei/telephony/HuaweiPhoneService;
.super Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.source "HuaweiPhoneService.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/HuaweiPhoneService$1;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
    }
.end annotation


# static fields
.field private static final CMD_HANDLE_DEMO:I = 0x1

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HuaweiPhoneService"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

.field private mPhone:Lcom/huawei/telephony/HuaweiPhone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;-><init>()V

    .line 56
    new-instance v0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;-><init>(Lcom/huawei/telephony/HuaweiPhoneService;Lcom/huawei/telephony/HuaweiPhoneService$1;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    .line 57
    const-string v0, "huaweiphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 131
    const-string v0, "HuaweiPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 102
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    new-instance v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .local v1, request:Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v2, p1, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    monitor-enter v1

    .line 110
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 117
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 117
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public getCardType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccManager;->getCardType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardType Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDemoString(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;->getDemoString(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/huawei/telephony/HuaweiPhoneService;->getDemoString(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 146
    return-object v0
.end method

.method public getSignalStrength()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 139
    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 2
    .parameter "subId"

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getSlotIdFromSubId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 176
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionManager;->isCardPresent(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 1
    .parameter "phone"
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Lcom/huawei/telephony/HuaweiPhone;

    invoke-direct {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    .line 63
    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method
