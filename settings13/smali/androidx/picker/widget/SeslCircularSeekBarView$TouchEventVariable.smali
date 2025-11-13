.class public Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;
.super Ljava/lang/Object;
.source "SeslCircularSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslCircularSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchEventVariable"
.end annotation


# instance fields
.field additionalRadius:F

.field ccwDistanceFromEnd:F

.field ccwDistanceFromStart:F

.field cwDistanceFromEnd:F

.field cwDistanceFromStart:F

.field cwPointerFromStart:F

.field distanceX:F

.field distanceY:F

.field innerRadius:F

.field minimumTouchTarget:F

.field outerRadius:F

.field pointerNearEnd:Z

.field pointerNearStart:Z

.field smallInCircle:F

.field final synthetic this$0:Landroidx/picker/widget/SeslCircularSeekBarView;

.field touchAngle:F

.field touchEventRadius:F

.field touchOverEnd:Z

.field touchOverStart:Z

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslCircularSeekBarView;)V
    .locals 0

    .line 409
    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->this$0:Landroidx/picker/widget/SeslCircularSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
