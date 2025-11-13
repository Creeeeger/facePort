.class public Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceResultInfo"
.end annotation


# instance fields
.field public final blacklist originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final blacklist resultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    return-void
.end method
