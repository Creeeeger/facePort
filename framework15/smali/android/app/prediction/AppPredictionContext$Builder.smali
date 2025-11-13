.class public final Landroid/app/prediction/AppPredictionContext$Builder;
.super Ljava/lang/Object;
.source "AppPredictionContext.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppPredictionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPredictedTargetCount:I

.field private blacklist mUiSurface:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/prediction/AppPredictionContext;
    .locals 7

    new-instance v6, Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPredictedTargetCount:I

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/prediction/AppPredictionContext;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/prediction/AppPredictionContext-IA;)V

    return-object v6
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0

    iput p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPredictedTargetCount:I

    return-object p0
.end method

.method public whitelist setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mUiSurface:Ljava/lang/String;

    return-object p0
.end method
