.class public final Lcom/android/settings/password/BiometricsChooseLockGeneric$BiometricsChooseLockGenericFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$listRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/util/SeslRoundedCorner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/BiometricsChooseLockGeneric$BiometricsChooseLockGenericFragment$1;->val$listRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p2

    invoke-static {p3, v0, p2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/password/BiometricsChooseLockGeneric$BiometricsChooseLockGenericFragment$1;->val$listRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroidx/core/graphics/Insets;)V

    return-void
.end method
