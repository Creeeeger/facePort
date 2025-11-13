.class public Landroidx/picker/features/observable/UpdateObservableProperty;
.super Landroidx/picker/features/observable/ObservableProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/picker/features/observable/ObservableProperty<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0011\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u0003B1\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u0013\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/picker/features/observable/UpdateObservableProperty;",
        "T",
        "R",
        "Landroidx/picker/features/observable/ObservableProperty;",
        "mutableState",
        "Landroidx/picker/features/observable/UpdateMutableState;",
        "onUpdated",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;)V",
        "update",
        "newBase",
        "(Ljava/lang/Object;)V",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mutableState:Landroidx/picker/features/observable/UpdateMutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/picker/features/observable/UpdateMutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/UpdateMutableState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "mutableState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/ObservableProperty;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/picker/features/observable/UpdateObservableProperty;->mutableState:Landroidx/picker/features/observable/UpdateMutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/UpdateObservableProperty;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateObservableProperty;->mutableState:Landroidx/picker/features/observable/UpdateMutableState;

    iput-object p1, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    return-void
.end method
