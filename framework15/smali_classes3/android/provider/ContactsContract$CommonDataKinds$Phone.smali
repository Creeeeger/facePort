.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
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
    name = "Phone"
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final whitelist NUMBER:Ljava/lang/String; = "data1"

.field public static final whitelist SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final whitelist SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final whitelist SEM_TYPE_CONFERENCE:I = 0x3fd

.field public static final whitelist TYPE_ASSISTANT:I = 0x13

.field public static final whitelist TYPE_CALLBACK:I = 0x8

.field public static final whitelist TYPE_CAR:I = 0x9

.field public static final whitelist TYPE_COMPANY_MAIN:I = 0xa

.field public static final whitelist TYPE_FAX_HOME:I = 0x5

.field public static final whitelist TYPE_FAX_WORK:I = 0x4

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_ISDN:I = 0xb

.field public static final whitelist TYPE_MAIN:I = 0xc

.field public static final whitelist TYPE_MMS:I = 0x14

.field public static final whitelist TYPE_MOBILE:I = 0x2

.field public static final whitelist TYPE_OTHER:I = 0x7

.field public static final whitelist TYPE_OTHER_FAX:I = 0xd

.field public static final whitelist TYPE_PAGER:I = 0x6

.field public static final whitelist TYPE_RADIO:I = 0xe

.field public static final whitelist TYPE_TELEX:I = 0xf

.field public static final whitelist TYPE_TTY_TDD:I = 0x10

.field public static final whitelist TYPE_WORK:I = 0x3

.field public static final whitelist TYPE_WORK_MOBILE:I = 0x11

.field public static final whitelist TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x1040bdd

    return v0

    :sswitch_0
    const v0, 0x1040bdc

    return v0

    :sswitch_1
    const v0, 0x1040be3

    return v0

    :sswitch_2
    const v0, 0x1040bd8

    return v0

    :sswitch_3
    const v0, 0x1040bed

    return v0

    :sswitch_4
    const v0, 0x1040bec

    return v0

    :sswitch_5
    const v0, 0x1040bea

    return v0

    :sswitch_6
    const v0, 0x1040be9

    return v0

    :sswitch_7
    const v0, 0x1040be8

    return v0

    :sswitch_8
    const v0, 0x1040be6

    return v0

    :sswitch_9
    const v0, 0x1040be2

    return v0

    :sswitch_a
    const v0, 0x1040be1

    return v0

    :sswitch_b
    const v0, 0x1040bdb

    return v0

    :sswitch_c
    const v0, 0x1040bda

    return v0

    :sswitch_d
    const v0, 0x1040bd9

    return v0

    :sswitch_e
    const v0, 0x1040be5

    return v0

    :sswitch_f
    const v0, 0x1040be7

    return v0

    :sswitch_10
    const v0, 0x1040bde

    return v0

    :sswitch_11
    const v0, 0x1040bdf

    return v0

    :sswitch_12
    const v0, 0x1040beb

    return v0

    :sswitch_13
    const v0, 0x1040be4

    return v0

    :sswitch_14
    const v0, 0x1040be0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x4 -> :sswitch_11
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x3fd -> :sswitch_0
    .end sparse-switch
.end method
