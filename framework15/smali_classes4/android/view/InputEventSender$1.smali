.class Landroid/view/InputEventSender$1;
.super Ljava/lang/Object;
.source "InputEventSender.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InputEventSender;

.field final synthetic blacklist val$event:Landroid/view/InputEvent;

.field final synthetic blacklist val$seq:I


# direct methods
.method constructor blacklist <init>(Landroid/view/InputEventSender;ILandroid/view/InputEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InputEventSender$1;->this$0:Landroid/view/InputEventSender;

    iput p2, p0, Landroid/view/InputEventSender$1;->val$seq:I

    iput-object p3, p0, Landroid/view/InputEventSender$1;->val$event:Landroid/view/InputEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InputEventSender$1;->this$0:Landroid/view/InputEventSender;

    iget v1, p0, Landroid/view/InputEventSender$1;->val$seq:I

    iget-object v2, p0, Landroid/view/InputEventSender$1;->val$event:Landroid/view/InputEvent;

    invoke-static {v0, v1, v2}, Landroid/view/InputEventSender;->-$$Nest$msendInputEventInternal(Landroid/view/InputEventSender;ILandroid/view/InputEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/InputEventSender$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
