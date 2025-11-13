.class public Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;
.super Landroid/widget/LinearLayout;
.source "SecZenScheduleRepeatPreference.java"


# instance fields
.field private mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method


# virtual methods
.method public getRepeatButtonHeight()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getRepeatButtonWidth()I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/R$id;->custom_repeat_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    return-void
.end method

.method public initRepeatButton([I)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->initRepeatBtn([I)V

    return-void
.end method

.method public setEnabledButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 51
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setEnabledBtn(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setRepeatListener(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setOnRepeatClickListener(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;)V

    return-void
.end method
