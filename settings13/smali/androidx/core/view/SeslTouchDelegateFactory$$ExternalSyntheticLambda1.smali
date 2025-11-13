.class public final synthetic Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/SeslTouchDelegateFactory$Strategy;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getExtraInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/SeslTouchDelegateFactory;->$r8$lambda$Te0jZ81JAO8lW5eNH8hLoU55YcM(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object p0

    return-object p0
.end method
