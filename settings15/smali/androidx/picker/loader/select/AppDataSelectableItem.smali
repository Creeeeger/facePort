.class public Landroidx/picker/loader/select/AppDataSelectableItem;
.super Landroidx/picker/loader/select/SelectableItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u00002\u00020\u0001:\u0001\rB#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008B\'\u0008\u0002\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/picker/loader/select/AppDataSelectableItem;",
        "Landroidx/picker/loader/select/SelectableItem;",
        "appInfoData",
        "Landroidx/picker/model/AppInfoData;",
        "onUpdated",
        "Lkotlin/Function1;",
        "",
        "",
        "(Landroidx/picker/model/AppInfoData;Lkotlin/jvm/functions/Function1;)V",
        "mutableState",
        "Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;",
        "(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V",
        "updateBase",
        "AppDataSelectedState",
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
.field private final mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;


# direct methods
.method private constructor <init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/SelectableItem;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/picker/loader/select/AppDataSelectableItem;->mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfoData;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/model/AppInfoData;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "appInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    invoke-direct {v0, p1}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final updateBase(Landroidx/picker/model/AppInfoData;)V
    .locals 1

    const-string v0, "appInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/loader/select/AppDataSelectableItem;->mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    iput-object p1, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    return-void
.end method
