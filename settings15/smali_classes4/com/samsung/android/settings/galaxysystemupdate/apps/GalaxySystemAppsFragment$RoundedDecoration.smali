.class public final Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;

    iget-object p3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->decorationRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->decorationRect:Landroid/graphics/Rect;

    iget-object p3, p2, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    return-void
.end method
