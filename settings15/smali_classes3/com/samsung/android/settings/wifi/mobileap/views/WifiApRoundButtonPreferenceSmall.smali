.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mOnButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;

.field public mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0a3b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a028a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
