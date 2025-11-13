.class final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPhysicalKeyboardFragment:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    .line 632
    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 633
    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;"
        }
    .end annotation

    .line 639
    new-instance p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 619
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .line 644
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$monLoadFinishedInternal(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;ILjava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
