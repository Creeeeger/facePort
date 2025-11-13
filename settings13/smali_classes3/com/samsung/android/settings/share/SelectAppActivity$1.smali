.class Lcom/samsung/android/settings/share/SelectAppActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/share/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$1;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$1;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->sec_share_select_app_item_container_vertical_offset:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
