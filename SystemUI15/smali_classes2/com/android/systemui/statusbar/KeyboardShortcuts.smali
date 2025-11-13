.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mShowTime:J

.field public static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field mBackgroundHandler:Landroid/os/Handler;

.field public mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field public mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "KeyboardShortcutHelper"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030223

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    :goto_0
    const p2, 0x7f1307d8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307ce

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x13

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x14

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x15

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x16

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x17

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x38

    const-string v4, "."

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307e7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x3d

    invoke-virtual {v0, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307e6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x3e

    invoke-virtual {v0, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f1307d6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x42

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307cf

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x43

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307dc

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x55

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307df

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x56

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307db

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x57

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307dd

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x58

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307de

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x59

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307da

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5a

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307e5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307e4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "A"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f1307d0

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x60

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "B"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x61

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "C"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x62

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "X"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x63

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "Y"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x64

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "Z"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "L1"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x66

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "R1"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x67

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "L2"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x68

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "R2"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x69

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "Start"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x6c

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "Select"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x6d

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "Mode"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x6e

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307d7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x6f

    const-string v6, "Esc"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x78

    const-string v6, "SysRq"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x79

    const-string v6, "Break"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x74

    const-string v6, "Scroll Lock"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307e1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7a

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307e0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7b

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307d9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7c

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x83

    const-string v6, "F1"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x84

    const-string v6, "F2"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x85

    const-string v6, "F3"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x86

    const-string v6, "F4"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x87

    const-string v6, "F5"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x88

    const-string v6, "F6"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x89

    const-string v6, "F7"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8a

    const-string v6, "F8"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8b

    const-string v6, "F9"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8c

    const-string v6, "F10"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8d

    const-string v6, "F11"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8e

    const-string v6, "F12"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0x7f1307e2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8f

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "0"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f1307e3

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x90

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "1"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x91

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "2"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x92

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "3"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x93

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "4"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x94

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "5"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x95

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "6"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x96

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "7"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x97

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "8"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x98

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "9"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x99

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "/"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9a

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "*"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9b

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "-"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9c

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "+"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9d

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9e

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9f

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xa0

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "="

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xa1

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "("

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xa2

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, ")"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xa3

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0xd3

    const-string/jumbo v4, "\u534a\u89d2/\u5168\u89d2"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0xd4

    const-string/jumbo v4, "\u82f1\u6570"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0xd5

    const-string/jumbo v4, "\u7121\u5909\u63db"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0xd6

    const-string/jumbo v4, "\u5909\u63db"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0xd7

    const-string/jumbo v4, "\u304b\u306a"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x39

    const-string v4, "Alt"

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x3a

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x71

    const-string v5, "Ctrl"

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x72

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x3b

    const-string v6, "Shift"

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x3c

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "Meta"

    const/high16 v0, 0x10000

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x1000

    invoke-virtual {v1, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "Sym"

    invoke-virtual {v1, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x8

    const-string v3, "Fn"

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const p2, 0x7f080976

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/KshPresenter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    return-void
.end method

.method public static dismiss()V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static show(ILandroid/content/Context;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toggle(ILandroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(ILandroid/content/Context;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dismissKeyboardShortcuts()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public showKeyboardShortcuts(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-eq p1, v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget v5, v3, v4

    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    move-result v6

    if-eq v6, v2, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KshPresenter$3;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method
