.class public final synthetic Landroid/os/Process$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/Process$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Landroid/os/Process$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroid/os/Process$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Landroid/os/Process$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/os/Process;->lambda$init$ravenwood$0(II)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    return-object v0
.end method
