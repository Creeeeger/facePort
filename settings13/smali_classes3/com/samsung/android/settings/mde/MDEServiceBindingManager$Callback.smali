.class public interface abstract Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;
.super Ljava/lang/Object;
.source "MDEServiceBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRequestUpdated()V
.end method

.method public abstract onSuggestionsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method
