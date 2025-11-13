.class public final Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;

    invoke-interface {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;->onGraphicsDriverContentChanged()V

    return-void
.end method
