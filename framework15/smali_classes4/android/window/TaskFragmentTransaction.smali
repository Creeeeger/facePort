.class public final Landroid/window/TaskFragmentTransaction;
.super Ljava/lang/Object;
.source "TaskFragmentTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentTransaction$Change;,
        Landroid/window/TaskFragmentTransaction$ChangeType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_REPARENTED_TO_TASK:I = 0x6

.field public static final blacklist TYPE_TASK_FRAGMENT_APPEARED:I = 0x1

.field public static final blacklist TYPE_TASK_FRAGMENT_ERROR:I = 0x5

.field public static final blacklist TYPE_TASK_FRAGMENT_INFO_CHANGED:I = 0x2

.field public static final blacklist TYPE_TASK_FRAGMENT_PARENT_INFO_CHANGED:I = 0x4

.field public static final blacklist TYPE_TASK_FRAGMENT_VANISHED:I = 0x3


# instance fields
.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransactionToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TaskFragmentTransaction$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentTransaction$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TaskFragmentTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TaskFragmentTransaction$Change;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTransactionToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentTransaction{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " changes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
