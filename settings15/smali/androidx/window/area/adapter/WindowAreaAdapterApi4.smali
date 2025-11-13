.class public final Landroidx/window/area/adapter/WindowAreaAdapterApi4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/window/area/adapter/WindowAreaAdapterApi4;",
        "",
        "()V",
        "translate",
        "Landroidx/window/area/WindowAreaCapability$Status;",
        "status",
        "",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/area/adapter/WindowAreaAdapterApi4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/area/adapter/WindowAreaAdapterApi4;

    invoke-direct {v0}, Landroidx/window/area/adapter/WindowAreaAdapterApi4;-><init>()V

    sput-object v0, Landroidx/window/area/adapter/WindowAreaAdapterApi4;->INSTANCE:Landroidx/window/area/adapter/WindowAreaAdapterApi4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(I)Landroidx/window/area/WindowAreaCapability$Status;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    sget-object p0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_UNSUPPORTED:Landroidx/window/area/WindowAreaCapability$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_ACTIVE:Landroidx/window/area/WindowAreaCapability$Status;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_AVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_UNAVAILABLE:Landroidx/window/area/WindowAreaCapability$Status;

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/window/area/WindowAreaCapability$Status;->WINDOW_AREA_STATUS_UNSUPPORTED:Landroidx/window/area/WindowAreaCapability$Status;

    :goto_0
    return-object p0
.end method
