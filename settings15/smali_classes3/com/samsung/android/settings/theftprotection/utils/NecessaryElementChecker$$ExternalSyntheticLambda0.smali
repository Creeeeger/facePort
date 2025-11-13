.class public final synthetic Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

.field public final synthetic f$1:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

.field public final synthetic f$2:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iput-object p3, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$2:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$2:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iput-object p3, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$2:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;->f$2:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    iget-object v0, p1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->resolveCondition(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
