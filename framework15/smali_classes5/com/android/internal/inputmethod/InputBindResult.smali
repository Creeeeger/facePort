.class public final Lcom/android/internal/inputmethod/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputBindResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;


# instance fields
.field public final blacklist accessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist channel:Landroid/view/InputChannel;

.field public final blacklist id:Ljava/lang/String;

.field public final blacklist isInputMethodSuppressingSpellChecker:Z

.field public final blacklist method:Lcom/android/internal/inputmethod/IInputMethodSession;

.field public final blacklist result:I

.field public final blacklist sequence:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputBindResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

    nop

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/inputmethod/IInputMethodSession;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;",
            "Landroid/view/InputChannel;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    iput-object p2, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object p3, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iput-object p5, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput p6, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput-boolean p7, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/inputmethod/InputBindResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist error(I)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 9

    new-instance v8, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v8
.end method

.method private blacklist getResultString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SUCCESS_WITH_ACCESSIBILITY_SESSION"

    return-object v0

    :pswitch_1
    const-string v0, "ERROR_INVALID_DISPLAY_ID"

    return-object v0

    :pswitch_2
    const-string v0, "ERROR_DISPLAY_ID_MISMATCH"

    return-object v0

    :pswitch_3
    const-string v0, "ERROR_NO_EDITOR"

    return-object v0

    :pswitch_4
    const-string v0, "ERROR_NOT_IME_TARGET_WINDOW"

    return-object v0

    :pswitch_5
    const-string v0, "ERROR_NULL_EDITOR_INFO"

    return-object v0

    :pswitch_6
    const-string v0, "ERROR_INVALID_USER"

    return-object v0

    :pswitch_7
    const-string v0, "ERROR_IME_NOT_CONNECTED"

    return-object v0

    :pswitch_8
    const-string v0, "ERROR_SYSTEM_NOT_READY"

    return-object v0

    :pswitch_9
    const-string v0, "ERROR_INVALID_PACKAGE_NAME"

    return-object v0

    :pswitch_a
    const-string v0, "ERROR_NO_IME"

    return-object v0

    :pswitch_b
    const-string v0, "ERROR_NULL"

    return-object v0

    :pswitch_c
    const-string v0, "SUCCESS_REPORT_WINDOW_FOCUS_ONLY"

    return-object v0

    :pswitch_d
    const-string v0, "SUCCESS_WAITING_USER_SWITCHING"

    return-object v0

    :pswitch_e
    const-string v0, "SUCCESS_WAITING_IME_BINDING"

    return-object v0

    :pswitch_f
    const-string v0, "SUCCESS_WAITING_IME_SESSION"

    return-object v0

    :pswitch_10
    const-string v0, "SUCCESS_WITH_IME_SESSION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBindResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputBindResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInputMethodSuppressingSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
