.class public Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
.super Ljava/lang/Object;
.source "GroupItem.java"


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mGroupAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIndex:I

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mIndex"    # I
    .param p2, "nName"    # Ljava/lang/String;
    .param p3, "mDescription"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    .line 17
    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mIndex:I

    .line 18
    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mDescription:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getAttribute(I)Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
    .locals 1
    .param p1, "index"    # I

    .line 37
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    return-object v0
.end method

.method public blacklist getAttributeInfoNum()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mIndex:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist pushAttribute(II[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "attribute"    # [B

    .line 33
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;-><init>(II[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
