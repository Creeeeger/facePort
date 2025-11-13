.class public Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCheckbox:Landroid/widget/CheckBox;

.field public final mContext:Landroid/content/Context;

.field public mIsChecked:Z

.field public mIsRemovable:Z

.field public mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

.field public mMode:I

.field public mPosition:I

.field public mSavedWifiEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

.field public mSsid:Landroid/widget/TextView;

.field public mSummary:Landroid/widget/TextView;

.field public mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSavedWifiEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-boolean v1, v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    const v2, 0x7f14287d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    const v2, 0x7f1428c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    const v3, 0x7f14287c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a1041

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSsid:Landroid/widget/TextView;

    const v0, 0x7f0a0f81

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSavedWifiEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iput-boolean p1, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsChecked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSummary(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSsid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    const v1, 0x7f060611

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSsid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    const v1, 0x7f060b83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWifiEntry(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;ILcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSavedWifiEntry:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsChecked:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->isRemovableNetwork()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    iput p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mPosition:I

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSsid:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setClickable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mCheckbox:Landroid/widget/CheckBox;

    new-instance p2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method
