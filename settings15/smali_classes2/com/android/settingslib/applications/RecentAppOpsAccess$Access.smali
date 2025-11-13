.class public final Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final accessFinishTime:J

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->label:Ljava/lang/CharSequence;

    iput-wide p5, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;->accessFinishTime:J

    return-void
.end method
