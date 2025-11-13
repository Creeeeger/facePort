.class public Lcom/samsung/android/settings/security/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDigits(Lcom/samsung/android/settings/security/Password;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private keyPressed(I)V
    .locals 2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private match(Ljava/lang/String;)Z
    .locals 3

    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->reasonable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "*"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "****"

    if-eqz v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dialogMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dialogMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private onPasswordConfirm()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, ".password"

    .line 249
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .locals 4

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "****"

    if-eqz v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->emptyMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dialogMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 262
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 264
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->pwdMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dialogMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method private setupKeypad()V
    .locals 2

    .line 117
    sget v0, Lcom/android/settings/R$id;->one:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    sget v0, Lcom/android/settings/R$id;->two:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/android/settings/R$id;->three:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/android/settings/R$id;->four:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/android/settings/R$id;->five:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcom/android/settings/R$id;->six:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/android/settings/R$id;->seven:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcom/android/settings/R$id;->eight:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lcom/android/settings/R$id;->nine:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcom/android/settings/R$id;->ok:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v0, Lcom/android/settings/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcom/android/settings/R$id;->backspace:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    sget v0, Lcom/android/settings/R$id;->zero:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/security/Password$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/Password$2;-><init>(Lcom/samsung/android/settings/security/Password;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 193
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->onPasswordConfirm()V

    return v2

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 139
    sget v0, Lcom/android/settings/R$id;->one:I

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 142
    :cond_0
    sget v0, Lcom/android/settings/R$id;->two:I

    if-ne p1, v0, :cond_1

    const/16 p1, 0x9

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 145
    :cond_1
    sget v0, Lcom/android/settings/R$id;->three:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0xa

    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 148
    :cond_2
    sget v0, Lcom/android/settings/R$id;->four:I

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 151
    :cond_3
    sget v0, Lcom/android/settings/R$id;->five:I

    if-ne p1, v0, :cond_4

    const/16 p1, 0xc

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 154
    :cond_4
    sget v0, Lcom/android/settings/R$id;->six:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0xd

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 157
    :cond_5
    sget v0, Lcom/android/settings/R$id;->seven:I

    if-ne p1, v0, :cond_6

    const/16 p1, 0xe

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 160
    :cond_6
    sget v0, Lcom/android/settings/R$id;->eight:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0xf

    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 163
    :cond_7
    sget v0, Lcom/android/settings/R$id;->nine:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x10

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 166
    :cond_8
    sget v0, Lcom/android/settings/R$id;->zero:I

    if-ne p1, v0, :cond_9

    const/4 p1, 0x7

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 169
    :cond_9
    sget v0, Lcom/android/settings/R$id;->backspace:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0x43

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    .line 172
    :cond_a
    sget v0, Lcom/android/settings/R$id;->ok:I

    if-ne p1, v0, :cond_b

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->onPasswordConfirm()V

    return-void

    .line 175
    :cond_b
    sget v0, Lcom/android/settings/R$id;->cancel:I

    if-ne p1, v0, :cond_c

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget p1, Lcom/android/settings/R$layout;->sec_dialpad:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ".title"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/Password;->mTitle:Ljava/lang/String;

    const-string v0, ".subject"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/Password;->mSubject:Ljava/lang/String;

    const-string v0, ".password"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    const-string v0, ".from"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FromOtherSecurity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    sget p1, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/security/Password;->mHeadrText:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget p1, Lcom/android/settings/R$id;->pinDisplay:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    .line 74
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/settings/security/Password$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/Password$1;-><init>(Lcom/samsung/android/settings/security/Password;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 98
    sget p1, Lcom/android/settings/R$id;->one:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->setupKeypad()V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->backspace:I

    if-ne p1, v0, :cond_0

    .line 277
    iget-object p0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
