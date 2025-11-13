.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;
    .locals 1

    sget-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    :cond_0
    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
