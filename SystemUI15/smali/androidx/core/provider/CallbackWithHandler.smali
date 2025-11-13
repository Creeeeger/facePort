.class public final Landroidx/core/provider/CallbackWithHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field public final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput-object p2, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 3

    iget v0, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    iget-object v1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    new-instance v0, Landroidx/core/provider/CallbackWithHandler$1;

    invoke-direct {v0, p0, v2, p1}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Landroidx/core/provider/CallbackWithHandler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/core/provider/CallbackWithHandler$2;

    invoke-direct {p1, p0, v2, v0}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(Landroidx/core/provider/CallbackWithHandler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
