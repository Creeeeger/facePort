.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEventContextMap:Landroid/util/SparseArray;

.field public static sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

.field public static final sKeyMouseCommandMap:Landroid/util/SparseArray;

.field public static sMouseEventCallBack:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;

.field public static final sPressedKey:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sPressedKey:Landroid/util/SparseBooleanArray;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlKeyMouseCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlShiftKeyMouseCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/AltKeyMouseCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method

.method public static getEventContext()Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
