.class public final Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mColor:I

.field public final mDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public final mLabel:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    iput-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mLabel:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mColor:I

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    int-to-float p2, p5

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
