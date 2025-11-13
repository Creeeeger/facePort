.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mInputManager:Landroid/hardware/input/InputManager;

.field private static final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;

    return-object v0
.end method


# virtual methods
.method public getKeyboardLayoutForInputDevice(Ljava/lang/String;Landroid/view/InputDevice;I)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/InputDevice;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    sget-object v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, p3, v1, v3}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v6

    invoke-virtual {v4, v6, p3, v1, v3}, Landroid/hardware/input/InputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v4

    const-string v6, "null"

    if-eqz v5, :cond_3

    const/4 v7, 0x0

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMethodManagerCompat;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method
