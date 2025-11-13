.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final whitelist CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final whitelist PROTOCOL:Ljava/lang/String; = "data5"

.field public static final whitelist PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_CUSTOM:I = -0x1

.field public static final whitelist PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_NETMEETING:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_PROTOCOL_FACEBOOK:I = 0xa

.field public static final whitelist SEM_PROTOCOL_WHATSAPP:I = 0x9

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 6902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7036
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7037
    return-object p2

    .line 7039
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 7040
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getProtocolLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .line 7013
    packed-switch p0, :pswitch_data_0

    .line 7025
    const v0, 0x10405f3

    return v0

    .line 7024
    :pswitch_0
    const v0, 0x10405f4

    return v0

    .line 7023
    :pswitch_1
    const v0, 0x10405fc

    return v0

    .line 7022
    :pswitch_2
    const v0, 0x10405f9

    return v0

    .line 7021
    :pswitch_3
    const v0, 0x10405f7

    return v0

    .line 7020
    :pswitch_4
    const v0, 0x10405f6

    return v0

    .line 7019
    :pswitch_5
    const v0, 0x10405f5

    return v0

    .line 7018
    :pswitch_6
    const v0, 0x10405fa

    return v0

    .line 7017
    :pswitch_7
    const v0, 0x10405fb

    return v0

    .line 7016
    :pswitch_8
    const v0, 0x10405fd

    return v0

    .line 7015
    :pswitch_9
    const v0, 0x10405f8

    return v0

    .line 7014
    :pswitch_a
    const v0, 0x10405f2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7000
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7001
    return-object p2

    .line 7003
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 7004
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .line 6985
    packed-switch p0, :pswitch_data_0

    .line 6989
    const v0, 0x10405fe

    return v0

    .line 6988
    :pswitch_0
    const v0, 0x1040600

    return v0

    .line 6987
    :pswitch_1
    const v0, 0x1040601

    return v0

    .line 6986
    :pswitch_2
    const v0, 0x10405ff

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
