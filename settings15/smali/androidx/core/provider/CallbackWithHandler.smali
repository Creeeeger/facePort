.class public final Landroidx/core/provider/CallbackWithHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

.field public final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    iput-object p2, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 2

    iget v0, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    iget-object v1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    new-instance v0, Landroidx/core/provider/CallbackWithHandler$1;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/core/provider/CallbackWithHandler$2;

    invoke-direct {p1, p0, v0}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
