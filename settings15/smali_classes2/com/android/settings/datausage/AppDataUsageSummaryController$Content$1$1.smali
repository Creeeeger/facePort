.class public final Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final synthetic $r8$classId:I

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final summaryContentDescription:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p3, 0x7f142f43

    invoke-static {p1, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1$summary$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1$summaryContentDescription$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1$summaryContentDescription$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p3, 0x7f140bae

    invoke-static {p1, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$3$summary$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$3$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$3$summaryContentDescription$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$3$summaryContentDescription$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p3, 0x7f140baf

    invoke-static {p1, p3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summary$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summaryContentDescription$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summaryContentDescription$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSummaryContentDescription()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->summaryContentDescription:Lkotlin/jvm/functions/Function0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;->title:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
