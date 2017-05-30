package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HFCurationResponse;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
/**
 * HFCurationResponseList
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-05-30T13:04:33.940Z")

public class HFCurationResponseList   {
  @JsonProperty("HFCurationResponses")
  private List<HFCurationResponse> hfCurationResponses = new ArrayList<HFCurationResponse>();

  public HFCurationResponseList hfCurationResponses(List<HFCurationResponse> hfCurationResponses) {
    this.hfCurationResponses = hfCurationResponses;
    return this;
  }

  public HFCurationResponseList addHfCurationResponsesItem(HFCurationResponse hfCurationResponsesItem) {
    this.hfCurationResponses.add(hfCurationResponsesItem);
    return this;
  }

   /**
   * Get hfCurationResponses
   * @return hfCurationResponses
  **/
  @ApiModelProperty(value = "")
  public List<HFCurationResponse> getHfCurationResponses() {
    return hfCurationResponses;
  }

  public void setHfCurationResponses(List<HFCurationResponse> hfCurationResponses) {
    this.hfCurationResponses = hfCurationResponses;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HFCurationResponseList hfCurationResponseList = (HFCurationResponseList) o;
    return Objects.equals(this.hfCurationResponses, hfCurationResponseList.hfCurationResponses);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hfCurationResponses);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HFCurationResponseList {\n");
    
    sb.append("    hfCurationResponses: ").append(toIndentedString(hfCurationResponses)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

