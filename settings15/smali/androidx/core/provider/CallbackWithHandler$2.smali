.class public final Landroidx/core/provider/CallbackWithHandler$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    iput p2, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    iget-object v0, v0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    :cond_0
    return-void
.end method
