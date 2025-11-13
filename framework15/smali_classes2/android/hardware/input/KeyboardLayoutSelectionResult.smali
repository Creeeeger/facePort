.class public final Landroid/hardware/input/KeyboardLayoutSelectionResult;
.super Ljava/lang/Object;
.source "KeyboardLayoutSelectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutSelectionResult$LayoutSelectionCriteria;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEFAULT:I = 0x4

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEVICE:I = 0x2

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_UNSPECIFIED:I = 0x0

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_USER:I = 0x1

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD:I = 0x3


# instance fields
.field private final blacklist mLayoutDescriptor:Ljava/lang/String;

.field private final blacklist mSelectionCriteria:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iput v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectionCriteria was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectionCriteria was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist layoutSelectionCriteriaToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LAYOUT_SELECTION_CRITERIA_DEFAULT"

    return-object v0

    :pswitch_1
    const-string v0, "LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD"

    return-object v0

    :pswitch_2
    const-string v0, "LAYOUT_SELECTION_CRITERIA_DEVICE"

    return-object v0

    :pswitch_3
    const-string v0, "LAYOUT_SELECTION_CRITERIA_USER"

    return-object v0

    :pswitch_4
    const-string v0, "LAYOUT_SELECTION_CRITERIA_UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    iget-object v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget v4, v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getLayoutDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSelectionCriteria()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardLayoutSelectionResult { layoutDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionCriteria = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
