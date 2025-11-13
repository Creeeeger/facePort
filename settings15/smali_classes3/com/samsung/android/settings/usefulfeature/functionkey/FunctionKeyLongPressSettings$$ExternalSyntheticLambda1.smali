.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    sget v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->$r8$clinit:I

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
