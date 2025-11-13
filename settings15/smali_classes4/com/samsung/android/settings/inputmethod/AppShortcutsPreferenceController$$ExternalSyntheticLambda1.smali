.class public final synthetic Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroidx/picker/model/AppInfoData;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->$r8$lambda$SIn_rfWbxGUFkFb8SHXqYbHpWY0(Landroidx/picker/model/AppInfoData;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->$r8$lambda$ms7grEr8BR7gfTPHkaeWtyTEUXU(Landroidx/picker/model/AppInfoData;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
