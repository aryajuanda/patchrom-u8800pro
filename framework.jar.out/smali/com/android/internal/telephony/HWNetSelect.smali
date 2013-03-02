.class public Lcom/android/internal/telephony/HWNetSelect;
.super Ljava/lang/Object;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HWNetSelect$DSDSType;
    }
.end annotation


# static fields
.field private static final DUALCARD_CLASS:Ljava/lang/String; = "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

.field private static final DUALCARD_PACKAGE:Ljava/lang/String; = "com.huawei.android.dsdscardmanager"

.field private static final INTERVAL_TO_CLOSE_DSDS:I = 0x3e8

.field private static final NUM_SUBSCRIPTIONS:I = 0x2

.field public static TIMETOCLOSECARDMANAGER:Ljava/lang/String; = null

.field private static final TIME_TO_CLOSE_DSDS:I = 0x4e20

.field private static mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private countdown:Landroid/os/CountDownTimer;

.field private dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

.field private mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

.field private mContext:Landroid/content/Context;

.field private mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

.field private mcardIndex:I

.field private mlastmIccIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;

    .line 31
    const-string v0, "TIMETOCLOSECARDMANAGER"

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect;->TIMETOCLOSECARDMANAGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "HWNetSelect"

    iput-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    .line 24
    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    .line 25
    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 26
    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iput-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/HWNetSelect;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HWNetSelect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/HWNetSelect;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/HWNetSelect;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/telephony/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/HWNetSelect;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/telephony/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/internal/telephony/HWNetSelect;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HWNetSelect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/HWNetSelect;

    return-object v0
.end method

.method private isCardChanged()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    const/4 v1, 0x1

    .line 181
    .local v1, result:Z
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    if-nez v4, :cond_3

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 204
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCardChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v1

    :cond_2
    move v1, v3

    .line 182
    goto :goto_0

    .line 187
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v4, v2

    .line 188
    .local v0, cardSub:Lcom/android/internal/telephony/Subscription;
    if-nez v0, :cond_5

    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 191
    :cond_5
    iget-object v4, v0, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, v0, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 196
    :goto_2
    goto :goto_0

    :cond_6
    move v1, v3

    .line 195
    goto :goto_2

    .line 199
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    move v1, v2

    .line 200
    :goto_3
    goto :goto_0

    :cond_8
    move v1, v3

    .line 199
    goto :goto_3
.end method

.method private isSlot0isGsm()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSlot0isGsm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    if-nez v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v2

    .line 130
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v3, v0

    .line 133
    .local v1, userSub:Lcom/android/internal/telephony/Subscription;
    if-eqz v1, :cond_0

    .line 136
    iget v3, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isUserPrefEmpty()Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 145
    const/4 v1, 0x0

    .line 148
    .local v1, ret:Z
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    if-nez v3, :cond_1

    .line 149
    const/4 v1, 0x1

    .line 170
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserPrefIsEmpity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v1

    .line 153
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v3, v0

    .line 156
    .local v2, userSub:Lcom/android/internal/telephony/Subscription;
    if-nez v2, :cond_2

    .line 157
    const/4 v1, 0x1

    .line 158
    goto :goto_0

    .line 162
    :cond_2
    iget v3, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private promptUserSubscription()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "promptUserSubscription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v1, "dualmgrstartcause"

    const-string v2, "framework"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/telephony/HWNetSelect;->setTimerToCloseCardManager()V

    .line 67
    return-void
.end method


# virtual methods
.method public cancelTheTimer()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTheTimer---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 90
    return-void
.end method

.method public matchSubscriptions(Lcom/android/internal/telephony/SubscriptionData;[Lcom/android/internal/telephony/SubscriptionData;[Ljava/lang/String;I)Z
    .locals 3
    .parameter "UserPrefSubs"
    .parameter "CardSubData"
    .parameter "lastmIccIds"
    .parameter "cardIndex"

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 101
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "matchSubscriptions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    .line 103
    invoke-virtual {p2}, [Lcom/android/internal/telephony/SubscriptionData;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/SubscriptionData;

    check-cast v1, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 104
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    .line 107
    const-string/jumbo v1, "ro.config.hw_cdmagsm"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v1, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HWNetSelect;->isCardChanged()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/HWNetSelect;->isUserPrefEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/HWNetSelect;->setDefaultSubscriptions()V

    .line 121
    :goto_1
    return v0

    .line 110
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iput-object v1, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    goto :goto_0

    .line 115
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iget-object v2, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/HWNetSelect;->isSlot0isGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/HWNetSelect;->promptUserSubscription()V

    .line 117
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDefaultSubscriptions()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setDefaultSubscriptions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v2, Lcom/android/internal/telephony/SubscriptionData;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    .line 212
    .local v2, matchedSub:Lcom/android/internal/telephony/SubscriptionData;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    if-nez v3, :cond_1

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setDefaultSubscriptions fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v6

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    if-nez v3, :cond_3

    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardSubData[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v1

    iget-object v0, v3, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 223
    .local v0, appType:Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v6, v3, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 224
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v6, v3, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 225
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 226
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 227
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 228
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 229
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 231
    sget-object v3, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    if-ne v3, v4, :cond_5

    const-string v3, "RUIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CSIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 232
    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v8, v3, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 233
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v1, v3, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 245
    .end local v0           #appType:Ljava/lang/String;
    .end local v1           #i:I
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v7

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    if-ne v3, v7, :cond_4

    .line 246
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardSubData[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    if-nez v3, :cond_4

    .line 248
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iput v7, v3, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 249
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iput v6, v3, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 250
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iput v8, v3, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 251
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iput v7, v3, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 252
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 253
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 254
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 255
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 256
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 260
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/HWNetSelect;->mcardIndex:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->setDefaultSubscription(Lcom/android/internal/telephony/SubscriptionData;I)V

    goto/16 :goto_0

    .line 236
    .restart local v0       #appType:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    if-ne v3, v4, :cond_7

    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 237
    :cond_6
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v1, v3, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 238
    iget-object v3, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v6

    iput v8, v3, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto/16 :goto_2

    .line 220
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public setTimerToCloseCardManager()V
    .locals 6

    .prologue
    .line 70
    new-instance v0, Lcom/android/internal/telephony/HWNetSelect$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HWNetSelect$1;-><init>(Lcom/android/internal/telephony/HWNetSelect;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 85
    return-void
.end method
