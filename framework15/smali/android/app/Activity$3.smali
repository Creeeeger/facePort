.class Landroid/app/Activity$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Activity;->-$$Nest$fputmInOutsideLongPress(Landroid/app/Activity;Z)V

    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$mapplyTransparentPopOver(Landroid/app/Activity;)V

    return-void
.end method
