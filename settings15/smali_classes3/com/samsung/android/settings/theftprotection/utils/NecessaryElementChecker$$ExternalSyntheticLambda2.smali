.class public final synthetic Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

.field public final synthetic f$1:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

.field public final synthetic f$2:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$1:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iput-object p3, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$1:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    return-void
.end method
