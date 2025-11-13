.class public final synthetic Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/model/KshData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/model/KshData;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/model/KshData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/model/KshData;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;->getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;->getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
