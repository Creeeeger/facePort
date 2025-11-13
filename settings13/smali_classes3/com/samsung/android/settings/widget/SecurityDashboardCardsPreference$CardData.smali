.class public Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;
.super Ljava/lang/Object;
.source "SecurityDashboardCardsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardData"
.end annotation


# instance fields
.field public btnAction:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public btnText:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->title:Ljava/lang/String;

    .line 365
    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->message:Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnAction:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 367
    iput-object p4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->type:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 368
    iput-object p5, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBtnAction()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnAction:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    return-object p0
.end method

.method public getBtnText()Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->type:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method
