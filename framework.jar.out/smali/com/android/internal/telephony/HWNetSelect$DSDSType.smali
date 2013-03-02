.class final enum Lcom/android/internal/telephony/HWNetSelect$DSDSType;
.super Ljava/lang/Enum;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HWNetSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DSDSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/HWNetSelect$DSDSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HWNetSelect$DSDSType;

.field public static final enum CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

.field public static final enum UMTS_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    const-string v1, "CDMA_GSM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    const-string v1, "UMTS_GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    sget-object v1, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->$VALUES:[Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HWNetSelect$DSDSType;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HWNetSelect$DSDSType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/HWNetSelect$DSDSType;->$VALUES:[Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HWNetSelect$DSDSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HWNetSelect$DSDSType;

    return-object v0
.end method
