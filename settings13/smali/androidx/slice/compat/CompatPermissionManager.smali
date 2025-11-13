.class public Landroidx/slice/compat/CompatPermissionManager;
.super Ljava/lang/Object;
.source "CompatPermissionManager.java"


# instance fields
.field private final mAutoGrantPermissions:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMyUid:I

.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "prefsName",
            "myUid",
            "autoGrantPermissions"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/slice/compat/CompatPermissionManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Landroidx/slice/compat/CompatPermissionManager;->mPrefsName:Ljava/lang/String;

    .line 57
    iput p3, p0, Landroidx/slice/compat/CompatPermissionManager;->mMyUid:I

    .line 58
    iput-object p4, p0, Landroidx/slice/compat/CompatPermissionManager;->mAutoGrantPermissions:[Ljava/lang/String;

    return-void
.end method
