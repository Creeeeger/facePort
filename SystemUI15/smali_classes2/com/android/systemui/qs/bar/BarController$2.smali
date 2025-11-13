.class public final Lcom/android/systemui/qs/bar/BarController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "BarController"

    const-string v2, "<QUICK_UIMODE : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v2}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    const-string v0, ">"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    iget p1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->-$$Nest$mlogForOpenTheme(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
