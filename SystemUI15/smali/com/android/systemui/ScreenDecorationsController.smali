.class public final Lcom/android/systemui/ScreenDecorationsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoverDotFactory:Lcom/android/systemui/decor/CoverPrivacyDotDecorProviderFactory;

.field public final mCoverPrivacyDotViewController:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

.field public final mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final mScreenDecorationsFactory:Lcom/android/systemui/ScreenDecorationsComponent$Factory;

.field public final mScreenDecorationsList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/ScreenDecorationsComponent$Factory;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;Lcom/android/systemui/decor/CoverPrivacyDotDecorProviderFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/ScreenDecorationsController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iput-object p3, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsFactory:Lcom/android/systemui/ScreenDecorationsComponent$Factory;

    iput-object p4, p0, Lcom/android/systemui/ScreenDecorationsController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iput-object p5, p0, Lcom/android/systemui/ScreenDecorationsController;->mCoverPrivacyDotViewController:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

    iput-object p6, p0, Lcom/android/systemui/ScreenDecorationsController;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    iput-object p7, p0, Lcom/android/systemui/ScreenDecorationsController;->mCoverDotFactory:Lcom/android/systemui/decor/CoverPrivacyDotDecorProviderFactory;

    return-void
.end method


# virtual methods
.method public final createScreenDecorations(Landroid/view/Display;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorationsController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    const/16 v2, 0x7e8

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorationsController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorationsController;->mCoverPrivacyDotViewController:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mCoverDotFactory:Lcom/android/systemui/decor/CoverPrivacyDotDecorProviderFactory;

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsFactory:Lcom/android/systemui/ScreenDecorationsComponent$Factory;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/systemui/ScreenDecorationsComponent$Factory;->create(Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;)Lcom/android/systemui/ScreenDecorationsComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/ScreenDecorationsComponent;->getScreenDecorations()Lcom/android/systemui/ScreenDecorations;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "ScreenDecorationsController state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/ScreenDecorationsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ScreenDecorationsController$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorationsController;->createScreenDecorations(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorationsController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorationsController;->createScreenDecorations(Landroid/view/Display;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorationsController;->mScreenDecorationsList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/ScreenDecorationsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
