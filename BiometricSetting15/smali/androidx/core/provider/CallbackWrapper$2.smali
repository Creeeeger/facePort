.class public final Landroidx/core/provider/CallbackWrapper$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 4
    .line 5
    return-void
.end method
