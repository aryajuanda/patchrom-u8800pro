.class public Landroid/telephony/PhoneNumberUtils$DashFormat;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashFormat"
.end annotation


# static fields
.field private static final DASHCOUNT:I = 0x4

.field private static final NUMBERNO:Ljava/lang/String; = "^(\\d{7,11})"

.field private static final NUMBERWITH:Ljava/lang/String; = "^((\\+{0,1}\\d{2}){1})(\\d{7,11})"

.field private static mInstance:Landroid/telephony/PhoneNumberUtils$DashFormat;

.field private static rulePattern:Ljava/util/regex/Pattern;

.field private static ruleRegex:Ljava/lang/String;


# instance fields
.field private mIsExistPrefix:Z

.field private mNumber:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mRegex:Ljava/lang/String;

.field private mReplaceRegex:Ljava/lang/String;

.field numDashes:I

.field numDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1395
    const-string v0, "^((\\+{0,1}\\d{2}){0,1})([\\-\\[\\]\\(\\)\\.@X]{7,15})"

    sput-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->ruleRegex:Ljava/lang/String;

    .line 1396
    sget-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->ruleRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->rulePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    .line 1399
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    .line 1400
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mIsExistPrefix:Z

    .line 1494
    iput v1, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    .line 1495
    iput v1, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    .line 1406
    return-void
.end method

.method private countX(Ljava/lang/String;)I
    .locals 5
    .parameter "content"

    .prologue
    .line 1497
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1498
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1499
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1500
    .local v0, c:C
    const/16 v3, 0x58

    if-ne v3, v0, :cond_1

    .line 1501
    iget v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    .line 1502
    if-nez v1, :cond_0

    .line 1503
    const/4 v3, 0x1

    iput v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    .line 1498
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1506
    :cond_1
    iget v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1507
    iget v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    .line 1508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    .line 1509
    if-lez v1, :cond_0

    .line 1510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\\d{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    .line 1511
    const/4 v3, 0x0

    iput v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    goto :goto_1

    .line 1515
    .end local v0           #c:C
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\\d{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    .line 1516
    iget v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    return v3
.end method

.method private enableRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "rule"

    .prologue
    .line 1471
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils$DashFormat;->isAvail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-direct {p0, p2}, Landroid/telephony/PhoneNumberUtils$DashFormat;->parseRule(Ljava/lang/String;)Z

    move-result v0

    .line 1474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/telephony/PhoneNumberUtils$DashFormat;
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mInstance:Landroid/telephony/PhoneNumberUtils$DashFormat;

    if-nez v0, :cond_0

    .line 1410
    new-instance v0, Landroid/telephony/PhoneNumberUtils$DashFormat;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$DashFormat;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mInstance:Landroid/telephony/PhoneNumberUtils$DashFormat;

    .line 1412
    :cond_0
    sget-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mInstance:Landroid/telephony/PhoneNumberUtils$DashFormat;

    return-object v0
.end method

.method public static isAvail(Ljava/lang/String;)Z
    .locals 1
    .parameter "rule"

    .prologue
    .line 1419
    sget-object v0, Landroid/telephony/PhoneNumberUtils$DashFormat;->rulePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private parseRule(Ljava/lang/String;)Z
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1478
    sget-object v4, Landroid/telephony/PhoneNumberUtils$DashFormat;->rulePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1480
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1482
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mIsExistPrefix:Z

    .line 1483
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberUtils$DashFormat;->countX(Ljava/lang/String;)I

    .line 1487
    .end local v0           #content:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method private replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "m"
    .parameter "number"

    .prologue
    .line 1444
    move-object v1, p2

    .line 1446
    .local v1, formated:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1448
    iget-boolean v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mIsExistPrefix:Z

    if-eqz v3, :cond_1

    .line 1450
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mPrefix:Ljava/lang/String;

    .line 1452
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mNumber:Ljava/lang/String;

    .line 1457
    :goto_0
    iget-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1458
    .local v2, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mIsExistPrefix:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mPrefix:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .end local v2           #m2:Ljava/util/regex/Matcher;
    :cond_0
    :goto_2
    return-object v1

    .line 1455
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Ljava/lang/Exception;
    move-object v1, p2

    goto :goto_2

    .line 1460
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #m2:Ljava/util/regex/Matcher;
    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .parameter "rule"

    .prologue
    .line 1429
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$DashFormat;->release()V

    .line 1430
    move-object v0, p1

    .line 1431
    .local v0, formated:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils$DashFormat;->enableRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    const/4 v1, 0x0

    .line 1433
    .local v1, mNumMatcher:Ljava/util/regex/Matcher;
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mIsExistPrefix:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mPrefix:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 1434
    :cond_0
    const-string v2, "^((\\+{0,1}\\d{2}){1})(\\d{7,11})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1438
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/telephony/PhoneNumberUtils$DashFormat;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .end local v1           #mNumMatcher:Ljava/util/regex/Matcher;
    :cond_1
    return-object v0

    .line 1436
    .restart local v1       #mNumMatcher:Ljava/util/regex/Matcher;
    :cond_2
    const-string v2, "^(\\d{7,11})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0
.end method

.method protected release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1521
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mRegex:Ljava/lang/String;

    .line 1522
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mReplaceRegex:Ljava/lang/String;

    .line 1523
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mPrefix:Ljava/lang/String;

    .line 1524
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->mNumber:Ljava/lang/String;

    .line 1525
    iput v1, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDashes:I

    .line 1526
    iput v1, p0, Landroid/telephony/PhoneNumberUtils$DashFormat;->numDigits:I

    .line 1527
    return-void
.end method
