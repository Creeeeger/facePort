.class public final Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$3;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    new-instance p3, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$3;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x3

    invoke-virtual {p3, p0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroidx/core/graphics/Insets;)V

    return-void
.end method
