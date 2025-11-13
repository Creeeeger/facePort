.class public Lcom/android/systemui/popup/data/DataConnectionErrorData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final INVALID_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DataConnectionErrorData"


# instance fields
.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static synthetic $r8$lambda$DRN98atB003GrXtTNWaGZ2TxQeg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mt1NAtdwKcK-o-Md_62rFwvD2RA(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$2(ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umOTpxsgHc0lf5xv_-_6C8wDzCs(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$1(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method

.method private static synthetic lambda$getPButtonClickListener$0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$getPButtonClickListener$1(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$getPButtonClickListener$2(ZLandroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "showDataConnectionNotifications() : PendingIntent.send() error. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataConnectionErrorData"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getBody(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f1304c5

    return p0

    :cond_1
    const p0, 0x7f1304bb

    return p0

    :cond_2
    const p0, 0x7f1304c2

    return p0

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f1304bf

    goto :goto_0

    :cond_4
    const p0, 0x7f1304be

    :goto_0
    return p0
.end method

.method public getNButton(IZ)I
    .locals 1

    const p0, 0x7f130ceb

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    const/4 v0, -0x1

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x7f130ace

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public getPButton(IZ)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    const v0, 0x7f131594

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x7f130f88

    :cond_1
    return v0

    :cond_2
    const p0, 0x7f130dd0

    return p0

    :cond_3
    const p0, 0x7f1312b6

    return p0
.end method

.method public getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    return-object p0
.end method

.method public getTitle(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    const v0, 0x7f1304c4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const p0, 0x7f1304c3

    return p0

    :cond_2
    const p0, 0x7f1304c0

    return p0
.end method
