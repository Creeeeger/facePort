.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final URL_ACTIVATION:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mErrMessage:Ljava/lang/String;

.field public mOnUpdateListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$$ExternalSyntheticLambda0;

.field public textview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "aHR0cHM6Ly9zdXBwb3J0LWNuLnNhbXN1bmcuY29tL3N1cHBvcnRjbi9JbWVpL2RlZmF1bHQuYXNweA=="

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->URL_ACTIVATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d07e7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final makeSummary(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mErrMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "chn_activation_date"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->URL_ACTIVATION:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140259

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "\n"

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f14024f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mErrMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mErrMessage:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;II)V

    const/16 v3, 0x21

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mErrMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->makeSummary(Ljava/lang/String;)V

    return-void
.end method

.method public final onClick()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mOnUpdateListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->$r8$lambda$AI2OWRLPsMv1sCOSSUaTsNATreE(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)V

    :cond_0
    return-void
.end method
