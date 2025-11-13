.class Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureResultCallbackInfo"
.end annotation


# instance fields
.field greylist-max-o callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

.field greylist-max-o gestureDescription:Landroid/accessibilityservice/GestureDescription;

.field greylist-max-o handler:Landroid/os/Handler;


# direct methods
.method constructor greylist-max-o <init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    return-void
.end method
