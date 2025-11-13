.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/widget/ProgressBar;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;->onViewAttached()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
