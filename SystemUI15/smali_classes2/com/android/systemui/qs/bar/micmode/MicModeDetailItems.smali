.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

.field public final audioManager:Landroid/media/AudioManager;

.field public callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

.field public final context:Landroid/content/Context;

.field public final handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

.field public itemList:Lcom/android/systemui/qs/AutoSizingList;

.field public final items:Ljava/util/List;

.field public selectedMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    new-instance p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    new-instance p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string p0, "MicModeDetailItems"

    const-string v0, "onAttachedToWindow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "MicModeDetailItems"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->itemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
