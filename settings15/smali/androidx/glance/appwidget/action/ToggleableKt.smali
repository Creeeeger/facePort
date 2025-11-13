.class public abstract Landroidx/glance/appwidget/action/ToggleableKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/glance/action/ActionParameters$Key;

    const-string v1, "android.widget.extra.CHECKED"

    invoke-direct {v0, v1}, Landroidx/glance/action/ActionParameters$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/glance/appwidget/action/ToggleableKt;->ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;

    return-void
.end method
