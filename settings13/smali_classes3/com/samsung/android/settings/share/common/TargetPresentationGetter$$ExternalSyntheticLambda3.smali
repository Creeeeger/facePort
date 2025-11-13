.class public final synthetic Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    iput p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    iget p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->$r8$lambda$wIvTgDF17Oj2f43Jcg7FQRpheKU(Landroid/content/ComponentName;I)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object p0

    return-object p0
.end method
