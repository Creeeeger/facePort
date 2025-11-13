.class public Lcom/android/settings/display/AppGridView$ActivityEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ResolveInfo;

.field public final label:Ljava/lang/String;

.field public final mIconFactory:Landroid/util/IconDrawableFactory;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mUserId:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    return-object p0
.end method
