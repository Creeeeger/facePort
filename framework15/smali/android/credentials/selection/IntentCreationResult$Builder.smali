.class public final Landroid/credentials/selection/IntentCreationResult$Builder;
.super Ljava/lang/Object;
.source "IntentCreationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/IntentCreationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFallbackUiPackageName:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mOemUiPackageName:Ljava/lang/String;

.field private blacklist mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    sget-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/credentials/selection/IntentCreationResult;
    .locals 7

    new-instance v6, Landroid/credentials/selection/IntentCreationResult;

    iget-object v1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/IntentCreationResult;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;Landroid/credentials/selection/IntentCreationResult-IA;)V

    return-object v6
.end method

.method public blacklist setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-object p0
.end method
