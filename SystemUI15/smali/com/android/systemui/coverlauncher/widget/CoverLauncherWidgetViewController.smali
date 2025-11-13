.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

.field public static mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;


# instance fields
.field public final appWidgetUpdating:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mPackageUtils$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$mPackageUtils$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$mPackageUtils$2;-><init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mPackageUtils$delegate:Lkotlin/Lazy;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final updateAppWidget(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    const p0, 0x7f0a04a5

    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;-><init>([ILcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;Landroid/appwidget/AppWidgetManager;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_1
    return-void
.end method
