.class public final Landroid/credentials/selection/IntentCreationResult;
.super Ljava/lang/Object;
.source "IntentCreationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;,
        Landroid/credentials/selection/IntentCreationResult$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mFallbackUiPackageName:Ljava/lang/String;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mOemUiPackageName:Ljava/lang/String;

.field private final blacklist mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Landroid/credentials/selection/IntentCreationResult;->mFallbackUiPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;Landroid/credentials/selection/IntentCreationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentCreationResult;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)V

    return-void
.end method


# virtual methods
.method public blacklist getFallbackUiPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mFallbackUiPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getOemUiPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-object v0
.end method
