.class final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    return-void
.end method

.method private loadInBackground(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;
    .locals 10

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 667
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 669
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    .line 670
    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 672
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 675
    iget-object v5, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p0, v5, v3, v4}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 677
    new-instance v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v6, v3, v4, v5}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    .line 684
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 685
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "keyboard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 688
    :cond_2
    iget-object v8, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p0, v8, v3, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v8

    .line 690
    new-instance v9, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v9, v3, v7, v8}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 694
    :cond_3
    new-instance p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 702
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 705
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .line 712
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 713
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 718
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    .line 719
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
